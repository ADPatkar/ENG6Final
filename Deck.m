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
            for i = ["Hearts", "Clubs", "Diamonds", "Spades"]
                for j = [2:10, "J", "Q", "K", "A"]
                    x = Card(i, j, 0);
                    obj.cards = [obj.cards, x];
                end
            end
            obj.cards = obj.cards(randperm(52)); %randomizer
            
            %game start production
            obj.p1Hand = Hand(obj);
            obj.cards(1:2) = [];
            obj.dealerHand = Hand(obj);
            obj.cards(1:2) = [];
            
            obj.discard = DiscardPile();
        end
    end
end