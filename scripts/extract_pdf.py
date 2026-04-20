#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
提取PDF文本内容并保存为Markdown文件
"""

import sys
import os
from pathlib import Path

def extract_pdf_text(pdf_path):
    """提取PDF文本内容"""
    try:
        import PyPDF2
    except ImportError:
        print("正在安装 PyPDF2...")
        import subprocess
        subprocess.check_call([sys.executable, "-m", "pip", "install", "PyPDF2", "-q"])
        import PyPDF2
    
    text_content = []
    
    with open(pdf_path, 'rb') as file:
        pdf_reader = PyPDF2.PdfReader(file)
        num_pages = len(pdf_reader.pages)
        
        print(f"PDF总页数: {num_pages}")
        
        for page_num, page in enumerate(pdf_reader.pages, 1):
            text = page.extract_text()
            if text.strip():
                text_content.append(f"\n## 第 {page_num} 页\n\n{text}")
    
    return "\n".join(text_content)

def main():
    if len(sys.argv) < 2:
        # 默认处理豆粕报告
        pdf_path = r"d:\software\Obsidian\repository\llm-wiki\raw\books\Mysteel豆粕市场周度报告(4.10-4.16).pdf"
    else:
        pdf_path = sys.argv[1]
    
    if not os.path.exists(pdf_path):
        print(f"错误: 文件不存在: {pdf_path}")
        sys.exit(1)
    
    print(f"正在处理: {pdf_path}")
    
    # 提取文本
    content = extract_pdf_text(pdf_path)
    
    # 生成输出文件名
    pdf_name = Path(pdf_path).stem
    output_dir = Path(r"d:\software\Obsidian\repository\llm-wiki\raw\books")
    output_path = output_dir / f"{pdf_name}.md"
    
    # 保存为Markdown
    with open(output_path, 'w', encoding='utf-8') as f:
        f.write(f"# {pdf_name}\n\n")
        f.write(f"**源文件**: `{pdf_path}`\n\n")
        f.write("---\n")
        f.write(content)
    
    print(f"\n[OK] 已保存到: {output_path}")
    print(f"  文件大小: {os.path.getsize(output_path) / 1024:.1f} KB")

if __name__ == "__main__":
    main()
