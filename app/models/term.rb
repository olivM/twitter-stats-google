class Term < ActiveRecord::Base
  
  validates_presence_of :name
  validates_uniqueness_of :name
  
  has_many :stats
  
  def get_stats(start_date, end_date)
    
    start_date = Date.parse(start_date)
    end_date = Date.parse(end_date)

    current_date = start_date
    i = 1

    lang = 'fr'

    while current_date < end_date and i < 31 do

      pp current_date.to_s

      stat = self.stats.find_or_create_by_day(current_date.to_s)

      if stat.nb_occ.nil?

        url = "http://www.google.com/search?hl=#{lang}&rls=#{lang}&lr=lang_#{lang}&q=site%3Atwitter.com+#{self.name}&tbs=cdr:1,cd_min:#{current_date},cd_max:#{current_date}&tbo=1"

        doc = Hpricot(open(url))

        begin
          results = doc.search('#resultStats b')[2].inner_html.gsub(/[^\d]/, '').to_i
        rescue
          results = doc.search('li.g').count
        end
        
        stat.nb_occ = results
        stat.save

        pp results

        i = i + 1

      end

      current_date = current_date + 1

    end

  end

end
