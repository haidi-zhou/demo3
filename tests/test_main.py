import pytest
from demo3.main import greet


def test_greet_success() -> None:
    assert greet("Haidi") == "Hello, Haidi!"


def test_greet_empty_name() -> None:
    with pytest.raises(ValueError, match="Name cannot be empty."):
        greet("   ")
