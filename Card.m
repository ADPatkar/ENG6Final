classdef Card
    properties
        suit;
        value;
        privacy = 0; %0 = facedown, 1 = faceup
    end
    methods
        function card = Card(suit, value, privacy)
            if nargin == 3
                card.suit = suit;
                card.value = value;
                card.privacy = privacy;
            else
                card.suit = [];
                card.value = [];
                card.privacy = [];
            end
        end
    end
end
