# Google Cloud SDK — source from the first location that exists
for _gcloud_dir in \
    "$HOME/google-cloud-sdk" \
    "$(command -v brew >/dev/null 2>&1 && echo "$(brew --prefix)/share/google-cloud-sdk")"; do
    if [ -n "$_gcloud_dir" ] && [ -f "$_gcloud_dir/path.zsh.inc" ]; then
        . "$_gcloud_dir/path.zsh.inc"
        [ -f "$_gcloud_dir/completion.zsh.inc" ] && . "$_gcloud_dir/completion.zsh.inc"
        break
    fi
done
unset _gcloud_dir
