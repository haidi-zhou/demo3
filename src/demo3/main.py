def greet(name: str) -> str:
    """Return a friendly greeting for the given name.

    :param name: The name of the person to greet.
    :return: A greeting string.
    """
    if not name.strip():
        raise ValueError("Name cannot be empty.")
    return f"Hello, {name.strip()}!"
