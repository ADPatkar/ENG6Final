classdef Card
    properties
        suit;
        value;
        privacy = 0; %0 = facedown, 1 = faceup
    end
    methods
        function obj = Card(suit, value, privacy)
            if nargin == 3
                obj.suit = suit;
                obj.value = value;
                obj.privacy = privacy;
            else
                obj.suit = [];
                obj.value = [];
                obj.privacy = [];
            end
        end
    end
end