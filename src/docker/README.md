### How to create a service

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
