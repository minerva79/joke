\name{joke}
\alias{joke}
\title{Random joke}
\usage{
joke(n=1, t=3, pause=TRUE)
}

\arguments{

  \item{n}{Number of jokes to be generated.}
  
  \item{t}{Time interval between displaying the question and the answer. The defaulted time-interval is at 3 seconds.}
  
  \item{pause}{TRUE/FALSE. Whether to invoke a 1.5 seconds pause between two questions.}
}

\description{
Random joke function randomly select a joke from question-answer joke data set, and display the jokes at customisable intervals.

The data-set which the function import from consists of 38,269 jokes in question-answer form. The data-set was obtained from the r/Jokes subreddit and distributed at https://www.kaggle.com/jiriroz/qa-jokes. The data is released under Released under reddit's [API terms](https://www.reddit.com/wiki/api-terms).

}
\examples{
joke() # display 1 joke, with 3 seconds interval between question and answer

joke(10, 0, FALSE) # display 10 jokes without any time intervals
}
\author{
Adam Quek
}