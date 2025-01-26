function grammarCheck()
    % Prompt the user to enter a sentence
    sentence = input('Enter a sentence: ', 's');
    
    % Define common singular and plural subjects and verbs
    singularSubjects = ["he", "she", "it"];
    pluralSubjects = ["we", "they"];
    singularVerbs = ["is", "has", "does"];
    pluralVerbs = ["are", "have", "do"];
    
    % Tokenize the sentence
    words = split(lower(sentence));
    
    % Check if sentence has at least a subject and a verb
    if length(words) < 2
        disp("Incomplete sentence.");
        return;
    end

    % Extract subject and verb
    subject = words{1};
    verb = words{2};

    % Special case for "I"
    if strcmp(subject, "i") && ~strcmp(verb, "am")
        disp("Error: Incorrect subject-verb agreement. Suggested: 'i am'.");
        return;
    end
    
    % Special case for "he", "she", "it" (singular subjects)
    if ismember(subject, singularSubjects) && strcmp(verb, "am")
        disp("Error: Incorrect subject-verb agreement. Suggested: '" + subject + " is'.");
        return;
    end

    % General subject-verb agreement checks
    if ismember(subject, singularSubjects) && ismember(verb, pluralVerbs)
        suggestion = singularVerbs(find(ismember(pluralVerbs, verb), 1));
        disp("Error: Incorrect subject-verb agreement. Suggested: '" + subject + " " + suggestion + "'.");
    elseif ismember(subject, pluralSubjects) && ismember(verb, singularVerbs)
        suggestion = pluralVerbs(find(ismember(singularVerbs, verb), 1));
        disp("Error: Incorrect subject-verb agreement. Suggested: '" + subject + " " + suggestion + "'.");
    else
        disp("No grammar errors detected.");
    end
end
