touch /etc/systemd/system/monitor_configurator.service
echo "[Unit]
Description=Monitor Configurator
After=graphical-session.target
StartLimitIntervalSec=0
[Service]
Type=simple
Restart=always
RestartSec=3
ExecStart=/home/pmg/git/cli_configs/ubuntu/monitor_automation.sh
[Install]
WantedBy=multi-user.target" > /etc/systemd/system/monitor_configurator.service
systemctl daemon-reload
systemctl enable monitor_configurator
systemctl start monitor_configurator

