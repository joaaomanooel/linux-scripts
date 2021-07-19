## How to install Docker

You can use the [Docker documentation](https://docs.docker.com/get-docker) or run this command:

```bash
curl -sSL https://get.docker.com | sh
```

## How to install Portainer
```bash
sudo docker run -d --name portainer --privileged -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v /home/pi/data/portainer:/data portainer/portainer
```

## How to create a service
```bash
cd /etc/systemd/system
```
- Create a file named your-service.service and include the following:

```py
[Unit]
Description=<description about this service>

[Service]
User=<user e.g. root>
WorkingDirectory=<directory_of_script e.g. /root>
ExecStart=<script which needs to be executed>
Restart=always

[Install]
WantedBy=multi-user.target
```

___

- Reload the service files to include the new service.
```bash
sudo systemctl daemon-reload
```
___

- Start your service
```bash
sudo systemctl start your-service.service
```
___

- To check the status of your service
```bash
sudo systemctl status example.service
```
___

- To enable your service on every reboot
```bash
sudo systemctl enable example.service
```
___

- To disable your service on every reboot
```bash
sudo systemctl disable example.service
```

___


> To disable your service on every reboot
```bash
sudo systemctl disable example.service
```
