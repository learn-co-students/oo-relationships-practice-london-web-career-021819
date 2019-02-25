class Trainer
    include BasicMethods
    attr_reader :name
    @@all = []

    def self.all
        @@all
    end

    def self.most_clients
        best_trainer = nil
        client_count= 0
        all.each do |trainer|
            n = Client.all.count{|client| client.trainer == trainer}
            if n > client_count
                client_count = n
                best_trainer = trainer
            end
        end
        best_trainer
    end
end