class User

  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

    def initialize(name)
      @name = name
      @@all << self
    end


    def make_pledge(project, amount)
      Pledge.new(self, project, amount)
    end

    def make_project(project_name, goal_amount)
      Project.new(project_name, self, goal_amount)
    end

    def pledges
      Pledge.all.select {|pledge| pledge.user == self}
    end

    def pledges_count
      pledges.count
    end

    def projects_made
      Pledge.all.select {|pledge| pledge.project.created_by == self}
    end

    def projects_made_count
      Pledge.all.select {|pledge| pledge.project.created_by == self}.count
    end

      def self.all_pledge_amounts_sort
        highest = Pledge.all.map {|pledge| pledge.amount}.sort!
        highest.last
      end

       def self.highest_pledge
         Pledge.all.find {|pledge| pledge.amount == all_pledge_amounts_sort}.user.name
       end

      def self.pledger_names
          Pledge.all.map {|pledge| pledge.user.name}
      end

         def self.multi_pledger
           # returns all users who have pledged to multiple projects
          @@all.select {|user_instance| user_instance.pledges_count > 1}
         end

         def self.project_creator
           @@all.select{|user_instance| user_instance.projects_made_count > 0}
        #returns all users who have created a project
         end
end
