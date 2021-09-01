# How to use
1. Modify `update-aria2-tracker.sh` and set your aria2 config file path.
2. 
```bash
sudo cp aria2-tracker-update.service /etc/systemd/system/
sudo cp aria2-tracker-update.timer /etc/systemd/system/
sudo cp update-aria2-tracker.sh /etc/
sudo systemctl daemon-reload
sudo systemctl enable aria2-tracker-update.service
sudo systemctl start aria2-tracker-update.service // must enable and start first
sudo systemctl enable aria2-tracker-update.timer
sudo systemctl start aria2-tracker-update.timer
```

