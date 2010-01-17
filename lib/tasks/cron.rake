task :get_stats => :environment do
  
  term = Term.find(:first, :order => " RANDOM() ")

  term.get_stats('2009-04-01', Date.today.to_s)

end
