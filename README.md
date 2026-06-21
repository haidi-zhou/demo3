# demo3

This is the `demo3` Python package.

## Development Setup

To replicate the development environment and install dependencies, run the setup script for your platform:

* **macOS / Linux:**
  ```bash
  ./setup.sh
  ```

* **Windows (PowerShell):**
  ```powershell
  .\setup.ps1
  ```

This will automatically check for and install `uv` if it is missing, create a local virtual environment (`.venv/`), and sync all dependencies.

## Running Code

You can run scripts and commands directly within the virtual environment using `uv run`. For example:

```bash
uv run python src/demo3/main.py
```

## Running Tests

We use `pytest` for unit testing. To run the tests, execute:

```bash
uv run pytest
```

## Linting and Formatting

We use `Ruff` for linting and formatting. Run the following commands to check the code:

* **Lint Check:**
  ```bash
  uv run ruff check .
  ```
* **Format Check:**
  ```bash
  uv run ruff format --check .
  ```
* **Format Code:**
  ```bash
  uv run ruff format .
  ```
