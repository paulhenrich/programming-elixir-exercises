content = "Now is the time"
lp =
  with {:ok, file} = File.open("/etc/passwd"),
       content = IO.read(file, :all),
       :ok  = File.close(file),
       [_, uid, guid] <- Regex.run(~r{xxx:.*?:(\d+):(\d+)}, content)
  do
    "Group: #{guid}, user: #{uid}"
  end
IO.puts lp
IO.puts content
