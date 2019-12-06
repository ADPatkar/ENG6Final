classdef Card
    properties (Access = public)
        suit;
        value;
        numVal;
        privacy; %0 is facedown, 1 is faceup
        imageName;
        imageApp
        back = "back.jpg";
    end
    methods (Access = public)
        function obj = Card(suit, value, numVal, privacy)
            if nargin == 4
                obj.suit = suit;
                obj.value = value;
                obj.privacy = privacy;
                obj.numVal = numVal;
                obj.imageName = sprintf("%s%s.jpg", value, suit);
            else
                obj.suit = [];
                obj.value = [];
                obj.privacy = [];
            end
        end
    end
end