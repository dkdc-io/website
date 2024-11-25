def get_class_source(cls):
    import inspect

    from rich.markdown import Markdown

    return Markdown(f"```python\n{inspect.getsource(cls)}\n```")
