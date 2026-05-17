#!/bin/bash

docker run -d \
  --name n-1 \
  --hostname b_ \
  --privileged \
  --device /dev/net/tun \
  -e NORDVPN_TOKEN="your_token" \
  -e NORDVPN_ANALYTICS=false \
  quay.io/mylastres0rt05_redhat/lab-bollet:latest



docker run -d \
  --name n-2 \
  --hostname my-hostname-2 \
  --privileged \
  --device /dev/net/tun \
  -e NORDVPN_TOKEN="your_token" \
  -e NORDVPN_ANALYTICS=false \
  quay.io/mylastres0rt05_redhat/lab-bollet:latest



docker run -d \
  --name n-3 \
  --hostname b_ \
  --privileged \
  --device /dev/net/tun \
  -e NORDVPN_TOKEN="your_token" \
  -e NORDVPN_ANALYTICS=false \
  quay.io/mylastres0rt05_redhat/lab-bollet:latest



docker run -d \
  --name n-4 \
  --hostname my-hostname-2 \
  --privileged \
  --device /dev/net/tun \
  -e NORDVPN_TOKEN="your_token" \
  -e NORDVPN_ANALYTICS=false \
  quay.io/mylastres0rt05_redhat/lab-bollet:latest

docker logs -f n-1 &
docker logs -f n-2 &
docker logs -f n-3 &
docker logs -f n-4 &
#!/bin/bash
sleep 60
#docker exec n-1 python3 dock_hop/camoufox_browser.py &
#docker exec n-2 python3 dock_hop/camoufox_browser.py &


#docker exec n-1 python3 dock_hop/camoufox_browser.py &
#docker exec n-2 python3 dock_hop/camoufox_browser.py &
