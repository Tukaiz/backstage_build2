# desc "Explaining what the task does"
# task :core do
#   # Task goes here
# end
namespace :subdomains do
  desc "adds subdomains to you /etc/hosts so that you don't have to pass the param"
  task :setup do
    Dir.chdir('storefronts')
    store_fronts = Dir['*']
    tmp_file, changed = '/tmp/etc_hosts_copy', false
    default_host, hosts    = "backstage.dev\n", store_fronts

    host_lines = ["127.0.0.1 " + default_host]
    hosts.each do |host|
      host_lines << "127.0.0.1 " + host + ".#{default_host}"
    end
    FileUtils.cp '/etc/hosts', tmp_file
    file = File.new(tmp_file)
    lines = file.readlines
    old_lines = lines.reject {|line| host_lines.include?(line)}
    file = File.new(tmp_file,'w')
    old_lines += host_lines
    old_lines.each { |line| file.write(line) }
    file.close

    # copy hosts file from tmp - may ask for sudo password
    %x[sudo -p "Password:" cp #{tmp_file} /etc/hosts]

    # explain what happened
    puts "\nAdded the following domains:"
    host_lines.each { |host| puts "* http://#{host}" }
    puts "\nAlso added defaults:"
    puts "* http://#{default_host}"
    puts "\n"
  end
end
