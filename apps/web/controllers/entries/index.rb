module Web::Controllers::Entries
  class Index
    include Web::Action

    expose :entries
    expose :sort  # not really necessary anymore

    def call(params)
      @sort = parmas[:sort]
      
      # most_recent or least_recent
      # TODO: Clean this up
      if @sort == 'most_recent'
        @entries = EntryRepository.new.most_recent
      else
        @entries = EntryRepository.new.least_recent
    end
  end
end
