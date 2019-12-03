classdef Deck
    properties
        cards = [];
        p1Hand
        p2Hand
        p1Palace
        p2Palace
    end
    methods
        function obj = Deck()
            import pkg.Card.*
            import pkg.Hand.*
            import pkg.Palace.*
            for i = ["Hearts", "Clubs", "Diamonds", "Spades"]
                for j = [2:10, "J", "Q", "K", "A"]
                    x = Card(i, j, 0);
                    obj.cards = [obj.cards, x];
                end
            end
            obj.cards = obj.cards(randperm(52)); %randomizer
            
            %game start production
            obj.p1Palace = Palace(obj);
            obj.cards(1:6) = [];
            for i = (1:3)
                obj.p1Palace.places(i).privacy = 1;
            end
            obj.p2Palace = Palace(obj);
            obj.cards(1:6) = [];
            for i = (1:3)
                obj.p2Palace.places(i).privacy = 1;
            end
            
            obj.p1Hand = Hand(obj);
            obj.cards(1:5) = [];
            obj.p2Hand = Hand(obj);
            obj.cards(1:5) = [];
        end
    end
end
