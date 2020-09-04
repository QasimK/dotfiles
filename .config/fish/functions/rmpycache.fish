function rmpycache -d "Remove cached Python files"
    find . -type f -name \*.pyc -delete
    find . -type d -name __pycache__ -delete
end
