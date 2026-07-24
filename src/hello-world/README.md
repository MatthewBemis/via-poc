# hello-world

Minimal proof-of-concept Workbench application. It serves a single static
HTML page reading "Hello world!" via nginx — nothing else.

## Configuration

- **Image**: nginx:alpine
- **Port**: 8080
- **User**: root
- **Home Directory**: /root
- **Content**: `html/index.html`, served by nginx using `nginx.conf`

## Access

Once deployed in Workbench, access the app at the app URL (port 8080).

For local testing:
1. Create Docker network: `docker network create app-network`
2. Run the app: `devcontainer up --workspace-folder .`
3. Access at: `http://localhost:8080`

## Customization

- `html/index.html` - The static page that gets served. Edit this to change the content.
- `nginx.conf` - nginx server config (listens on port 8080, serves `html/`).
- `.devcontainer.json` - Devcontainer configuration and features.
- `docker-compose.yaml` - Docker Compose configuration.
- `devcontainer-template.json` - Template options and metadata.

## Testing

To test this app template:

```bash
cd test
./test.sh hello-world
```

## Usage

1. Fork the repository
2. Modify the configuration files as needed
3. In Workbench UI, create a custom app pointing to your forked repository
4. Select this app template (hello-world)
