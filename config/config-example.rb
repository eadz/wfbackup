AMAZON_ACCESS_KEY_ID='AAAAAAAAA'
AMAZON_SECRET_ACCESS_KEY='AAAAAAA'
BUCKET_NAME = 'backupbucket'

# directories to archive
# you can use any method you want to get these directories here rather than hand coding them
@dirs << {:name => 'gitosis', :dir => '/srv/gitosis'}

%w{bob joe dave}.each do |user|
  @dirs << {:name => "backup-#{user}", :dir => "/home/#{user}"}
end
