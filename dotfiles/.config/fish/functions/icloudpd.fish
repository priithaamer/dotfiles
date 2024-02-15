function icloudpd
  docker run -it --rm --name icloudpd -v /Volumes/Photos/Photos:/data -v /Users/priit/.pyicloud:/root/.pyicloud icloudpd/icloudpd:latest icloudpd --directory /data --username priit@haamer.ee $argv
end
