# ssh_buttons

just execute shell scripts on remote machines via custom buttons and groups. nothing more

## dev
to run the app, additional flags are needed for the app to run properly:
`futter run --no-sound-null-safety`. This is needed, because the ssh lib is not null safety and will cause an error. To run the app directly on a phone, the release version is needed by adding the `--release` flag

cheers
