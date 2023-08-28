# webUI-URLindex

## Usage

### Build

    git clone https://github.com/SebaViana/webUI-URLindex
    docker build -t webUI-URLindex  .

### Run

    Run the Docker container, mapping port 8080 on your host to port 80 in the container:
    ```
    docker run -d -p 8080:80 webUI-URLindex
    ```

#### Volumes

    To persistently store and easily modification of URL displayed in the UI, you can use the following volume mapping.

    /usr/share/nginx/html/json/urls.json

    The json should be in the following format:
    ```
    [
    {
        "name": "Grafana",
        "url": "http://localhost:3000"
    },
    {
        "name": "Prometheus",
        "url": "http://localhost:9090"
    }
    ]
    ```
    Each entry in the JSON array should have a name and a url property.
