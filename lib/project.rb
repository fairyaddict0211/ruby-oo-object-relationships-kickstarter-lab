class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backer_list = []
        ProjectBacker.all.each do |pb|
            if pb.project == self
                backer_list << pb.backer
            end
        end  
        return backer_list
    end
end