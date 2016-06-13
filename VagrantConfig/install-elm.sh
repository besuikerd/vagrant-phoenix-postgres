if [ -z $(which elm) ]; then
  echo "Installing elm..."
  
  npm install -g elm
fi
