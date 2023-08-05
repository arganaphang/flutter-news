import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:hello/widget/top_bar.dart';

class NewsPage extends StatelessWidget {
  static const routeName = "/news";
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Stack(
              children: [
                Image.network(
                  "https://img.jakpost.net/c/2023/01/18/2023_01_18_134622_1674049490._large.jpg",
                  width: double.infinity,
                  height: screenHeight * .55,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: screenHeight * .5,
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32),
                    ),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: screenHeight * .75,
                      ),
                      child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "This is title 🔥",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 8),
                              MarkdownBody(
                                selectable: true,
                                shrinkWrap: true,
                                styleSheet: MarkdownStyleSheet(
                                  p: TextStyle(
                                    height: 1.8,
                                    color: Colors.black87.withOpacity(.7),
                                  ),
                                ),
                                data:
                                    "Two Nobel laureates will headline _The Jakarta Post_'s one-day seminar on Monday, which will discuss pressing issues surrounding the state of democracy in Indonesia and Southeast Asia.    \n\nAs part of a series of events to celebrate the _Post_‘s 40th anniversary, the Democracy Dialogue seminar will feature several press and democracy leaders in the region, including Maria Ressa, cofounder of news website _Rappler,_ critical of former Philippines President Rodrigo Duterte; Timor-Leste President José Ramos-Horta; and Fuadi Pitsuwan, foreign policy advisor to Thailand's Move Forward Party.\n\nCarrying the theme of “The Sustainability of Democracy in Southeast Asia”, the dialogue will focus on the worrying trends of democracy in the region, including military coups, economic development and the role of a free press in sustaining a region that is home to hundreds of millions who struggle to make their voices heard every day.\n\n“We know that democracy in Southeast Asia is not in a good shape. With military coups, legal obstruction, dynastic politics and the spread of misinformation and hoaxes in the context of elections,” said M. Taufiqurrahman, the _Post_'s chief editor.\n\n“And Indonesia itself will have an election next year. So it should come naturally for us at the _Post_ to discuss the issue, to take stock of the situation and chart a path forward.”\n\nAlongside the global decline in democratization, military coups, rigged ballots and crackdowns on press freedom and civil liberty in several Southeast Asian nations have rung alarm bells over the prospects for democracy in the region, which appear to be on a trajectory toward autocracy.\n\nIn Thailand, people's democratic hopes were dashed when Pita Limjaroenrat, the leader of Move Forward Party, the winner of May's general election, failed to become the country's prime minister after being blocked by a legal case that rendered his victory against the incumbent, military-backed Prayut Chan-o-cha, illegitimate.\n\nCambodia's longtime strongman Hun Sen, meanwhile, formally announced last week that his son Hun Manet will take over as prime minister in a matter of weeks, just days after he one-sidedly claimed a landslide victory in [the general election](https://www.thejakartapost.com/world/2023/07/25/cambodian-election-draws-criticism.html), an outcome that was virtually assured by suppression and intimidation.\n\nIn Myanmar, a military regime extended the nationwide state of emergency for a fourth time on Tuesday, a designation it has used as a pretext to suspend democratic processes, saying that it will “restore perpetual peace across the nation”. The state of emergency has effectively postponed an election the junta promised after its coup by at least another six months.\n\n“Fuadi Pitsuwan of the Move Forward Party can definitely brief us on the latest political situation in Bangkok and share with us what went right and wrong after the election,” Taufiq said.\n\nHe also said Ressa would be the right person to talk about how the media could play a key role in protecting democratic culture and come up with ways to battle misinformation in politics.\n\nA veteran journalist, Ressa has been prosecuted and jailed after running investigative reports and vocal criticism of Duterte. In 2021, she won the Nobel Peace Prize along with Russian journalist Dmitry Muratov. \n\nA political activist and freedom fighter, President Ramos-Horta led the pro-independence movement in then-East Timor from Indonesia. He is a co-recipient of the 1996 Nobel Peace Prize, along with the Catholic Bishop of Dili Carlos Filipe Ximenes Belo.\n\n![Timor-Leste President Jose Ramos-Horta, then presidential candidate, gestures as he casts his ballot during the second round of presidential elections in Dili, on April 19, 2022. ](https://img.jakpost.net/c/2022/04/21/2022_04_21_124877_1650509464._medium.jpg)Timor-Leste President Jose Ramos-Horta, then presidential candidate, gestures as he casts his ballot during the second round of presidential elections in Dili, on April 19, 2022. (AFP/Valentino Dariel Sousa)\n\nYose Rizal Damuri, the executive director of the Jakarta-based Centre for Strategic and International Studies (CSIS), said the current trend of democratic regression, whether in the region or beyond, needed to be anticipated and responded to properly.\n\n“The forum could serve as a platform to find the best ways to respond to the current developments within the region, seek a suitable model of democracy in the region, which will help the development of the region as a whole, be it for peace efforts, welfare issues, or other various issues,” Yose said.\n\n“Democracy is not something that is static \\[…\\] We could try to find a balance for the region while expecting a better democratic practices more broadly, including in countries that are considered autocratic states like Myanmar.”\n\nThe _Post'_s [anniversary events](https://www.thejakartapost.com/40-years) will run from Aug. 6 to 19. It will also hold “Portraits of a Nation: Indonesia's Journey of Change and Resilience”, a photo exhibition that will feature curated photos published in the newspaper over the past 40 years, presenting them in narratives that will help visitors to understand the country's history.\n\nA book discussion will also be held on Aug. 8, where Jusuf Wanandi, a senior fellow and cofounder of the CSIS and author of the essay compilation _Testimony of Changes_, will take the audience on a thought-provoking exploration of the nation's socio-political evolution, shedding light on societal transformations that have shaped modern Indonesia.",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const TopBar(),
        ],
      ),
    );
  }
}
