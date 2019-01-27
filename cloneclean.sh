### Falls under PG Prune for Execution to Save Time & Sanity

# Outside Variables
dlpath=$(cat /var/plexguide/server.hd.path)

# Starting Actions
touch /opt/appdata/plexguide/pgblitz.log
mkdir -p "$dlpath/pgblitz/upload"
mkdir -p "$dlpath/move"

# Permissions
chown 1000:1000 "$dlpath/move"
chown 1000:1000 "$dlpath/pgblitz/upload"
chmod 755 "$dlpath/move"
chown 755 "$dlpath/pgblitz/upload"

# Execution
find "$dlpath/move/" -mindepth 2 -mmin +30 -type d -empty -delete
find "$dlpath/pgblitz/upload" -mindepth 1 -mmin +30 -type d -empty -delete
#find "/mnt/pgblitz/upload" -mindepth 1 -mmin +30 -type d -empty -delete
