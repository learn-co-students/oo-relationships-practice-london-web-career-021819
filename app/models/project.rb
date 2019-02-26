class Project
  attr_reader  :project_name
  attr_accessor :created_by, :goal_amount

  @@all = []

  def self.all
      @@all
  end

    def initialize(project_name, created_by, goal_amount)
      @created_by = created_by
      @project_name = project_name
      @goal_amount = goal_amount
      @@all << self
    end

        def all_pledges_for_this_project
          Pledge.all.select {|pledge| pledge.project == self}
        end


        def total_of_pledges
            total = all_pledges_for_this_project.collect {|pledge| pledge.amount}
            total.reduce(:+)
          end

        def goal_achieved
          if total_of_pledges > self.goal_amount
            true
          else
            false
          end
        end

        def project_pledges
          Pledge.all.select {|pledge| pledge.project == self}
        end

          def self.no_pledges
            # returns all projects which have no pledges yet
            @@all.select {|project_instance|project_instance.project_pledges.length == 0}
          end


          def self.above_goal
          #returns all projects which have met or exceeded their pledge goal
            @@all.select {|project_instance|project_instance.goal_achieved}
          end


            def self.most_backers
                project_names = Pledge.all.collect {|pledge| pledge.project.project_name}
                counts = Hash.new(0)
                project_names.each { |name| counts[name] += 1 }
              return counts
                  #returns the project with the highest number of backers
              end
end
