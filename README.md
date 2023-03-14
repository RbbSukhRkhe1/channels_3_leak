# Channels Memory Leak Example

This Django Channels project is an isolated example of the `channels` and `daphne` memory leak.

Steps to reproduce:

```
docker-compose build
docker-compose up -d
docker stats channels_3_leak_web_1
```

And watch the `MEM %` keep going up!

Personally, it starts around `2.5%` and will go up to `4%` with lots of tabs open. Then never go back down once the tabs close.\
test
