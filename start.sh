if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/afiqnazir/Testing01.git /Testing01
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Testing01
fi
cd /Testing01
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
