classdef Deck
    properties (Access = public)
        cards = [];
        p1Hand
        dealerHand
        discard
    end
    methods (Access = public)
        function obj = Deck()
            import pkg.Card.*
            import pkg.Hand.*
            for i = ["H", "C", "D", "S"]
                for j = [2:10, "J", "Q", "K", "A"]
                    switch j
                        case "J"
                            k = "10";
                        case "Q"
                            k = "10";
                        case "K"
                            k = "10";
                        case "A"
                            k = "11";
                        otherwise
                            k = j;
                    end
                    x = Card(i, j, k, 0);
                    obj.cards = [obj.cards, x];
                end
            end
            obj.cards = obj.cards(randperm(52)); %randomizer
            
            %game start production
            obj.p1Hand = Hand(obj);
            obj.cards(1:2) = [];
            obj.p1Hand.cards(1).privacy = 1;
            obj.p1Hand.cards(2).privacy = 1;
            
            obj.dealerHand = Hand(obj);
            obj.cards(1:2) = [];

            obj.discard = DiscardPile();
        end
    end
end