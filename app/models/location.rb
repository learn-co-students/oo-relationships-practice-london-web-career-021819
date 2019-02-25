class Location
    include BasicMethods
    attr_reader :name
    @@all = []

    def self.all
        @@all
    end
    def self.least_clients
        least_gym = nil
        client_count = 10000
        Location.all.each do |location|
            i = ClientGym.all.count{|clientgym| clientgym.location == location}
            if i < client_count
                client_count = i
                least_gym = location
            end
        end
        least_gym
    end
end