# Source code for https://sec-bit.github.io

## Usage

1. Clone

    ```
    git clone --recursive git@github.com:sec-bit/website.git
    ```

2. Install [Pandoc](https://pandoc.org/installing.html)

3. Edit

    - Add or edit file ending with `.md`
    - Edit [template](./template) and [style.css](resources/style.css)

4. Preview

    ```
    make clean && make
    open public/index.html
    ```

5. Deploy

    ```
    ./deploy.sh
    ```

    The `deploy.sh` would commit and push the changes to https://github.com/sec-bit/sec-bit.github.io.

    Don't forget to commit changes in this repo, including git submodule change.

6. View the changes at https://sec-bit.github.io.