# docker-zat
Docker container for Zendesk's ZAT

# How to use

    $: docker run -p 4567:4567 -v <path/to/your/app:/app -ti zendesk-development zat <command>

Where <command> is any of the [ZAT commands](https://developer.zendesk.com/apps/docs/developer-guide/zat).

