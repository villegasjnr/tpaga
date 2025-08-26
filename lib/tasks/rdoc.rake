namespace :rdoc do
    desc "Generate RDoc documentation for the application"
    task :generate => :environment do
      puts "Generating RDoc documentation..."
      system("rdoc")
      puts "Documentation generated in the 'doc' directory"
      puts "You can open file://#{Rails.root}/doc/index.html in your browser"
    end
  
    desc "Clean up generated RDoc documentation"
    task :clean => :environment do
      if Dir.exist?("doc")
        FileUtils.rm_rf("doc")
        puts "RDoc documentation deleted"
      else
        puts "No RDoc documentation to delete"
      end
    end
  
    desc "Regenerate RDoc documentation (clean and generate)"
    task :regenerate => [:clean, :generate]
  end
