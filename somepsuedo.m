player1Turn = 0
player2Turn = 0
function start = hands(hand1, hand2, pile) %lowest card starts
if min(hand1) == min(hand2)
    pile = min(hand1)
    start = 1
elseif min(hand1) > min(hand2)
    pile = min(hand1)
  start = 1
else
    pile = min(hand2)
   start = 2
end
end
function gameplay = gogo(start, hand1, hand2, pile, deck)
if start = 1 
    x = input('Player 1, Any cards that are greater than or equal to deck? (Yes or No)')
    if x = 'Yes'
        
        
    
    
    