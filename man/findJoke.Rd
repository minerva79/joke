\name{findJoke}
\alias{findJoke}
\title{Find joke based on keyword}
\usage{
joke(keyword, t=0, pause=FALSE, max=6)
}

\arguments{

  \item{keyword}{Keyword appearing on either question or answer of the joke data-set}

  \item{max}{Maximum number of jokes returned. Default = 6.}

  \item{t}{Time interval between displaying the question and the answer. The defaulted time-interval is at 3 seconds.}

  \item{pause}{TRUE/FALSE. Whether to invoke a 1.5 seconds pause between two questions.}
}

\description{

Find joke based on single keyword supplied.

The data-set which the function import from consists of 38,269 jokes in question-answer form. The data-set was obtained from the r/Jokes subreddit and distributed at https://www.kaggle.com/jiriroz/qa-jokes. The data is released under Released under reddit's [API terms](https://www.reddit.com/wiki/api-terms).

}
\examples{
findJoke("fungi", max=2)

# Question -
#
#       How much room is needed for fungi to grow?
#
# Answer -
#
#       As mushroom as possible
#
#  ===
#
# Question -
#
#       Why did the mushroom go to the party?
#
# Answer -
#
#       Because he was a fungi
#
#  ===


}
\author{
Adam Quek
}
