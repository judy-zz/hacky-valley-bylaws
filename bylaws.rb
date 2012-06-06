
module HackerTracker
  module Bylaws

    # CONSTANTS

    # TODO: We need to define the following constants/"global" methods.
    # VOTING_METHOD # What the function should look like for voting
    # QUOROM # The minimum number of full/supporting/co-operative members that are required to be allowed to hold meetings and/or vote.

    # All monetary values are in cents!
    FULL_MEMBERSHIP_COST        = 5000
    SUPPORTING_MEMBERSHIP_COST  = 2000
    COOPERATIVE_MEMBERSHIP_COST = 0

    class Article::WhyWeExist
      def mission_statement
        # TODO: We need a mission statement! We are...
      end

      def purpose
        puts <<-purpose
          Build and maintain spaces suitable for technical and social collaboration;
          Facilitate the productive exchange of ideas and knowledge;
          Collaborate across disciplines for the benefit of cultural, charitable, and scientific causes;
          Engage in community outreach;
          Recruit and develop talented members dedicated to these purposes;
          Through talks, classes, workshops, collaborative projects, and other activities, to encourage research, knowledge exchange, learning, and mentoring in a safe, clean space;
          Provide educational spaces for teaching practical skills and theory of technology, science, and art;
          Provide work space, storage, and other resources for projects related to art, science, and technology that will benefit the individual members' personal growth in their fields of interest, encouraging the individual members to share their projects and knowledge for the betterment of society through art, science and technology;
          Create, learn, and teach, individually and as a group, inviting members of the community in the State College area and the world;
          Develop, support the development of, and provide resources for the development of free and open source software and hardware for the benefit of society;
          Foster, by all legal means, the common purposes of its participants, and to conduct or engage in all lawful activities in furtherance of the stated purposes or those incidental to them.
        purpose
      end
    end

    class Article::Membership

      def full_memberships
        puts "24-hour access to the space"
        puts "Voting rights"
        puts "Storage space"
        if notified_all_other_members_24_hours_in_advance?(event)
          puts "Ability to use the space for functions (parties, meetings, and other gatherings)"
        end
      end

      def grant_full_membership(user)
        

        user.full_membership = true
      end

      def full_member?(user)
        user.full_membership == true && user.current_with_payments?
      end
    end
    
  end



  class User
    include HackerTracker::Bylaws

    def current_with_payments?
      case membership_level
      when :full
        current_amount_owed <= FULL_MEMBERSHIP_COST
      when :supporting
        current_amount_owed <= SUPPORTING_MEMBERSHIP_COST
      when :cooperative
        true
      else
        raise "Not currently any kind of member!"
      end
    end
  end
end

# Article II: Membership

# Section 1: Types of Membership

# There shall be three classes of membership; full member, supporting member, and co-operatives. 

# Section 1.1: Full Membership

# All current key holders who are paying dues are Full Members. To become a Full Member you must have the support of two (2) Full Members or complete the Full Member Application.

# Full Members have the following privileges:
# 24-hour access to the space
# Voting rights
# Storage space
# Ability to use the space for functions (parties, meetings, and other gatherings) provided they have alerted all other members twenty-four (24) hours in advance

# Full Members must pay the Full Membership Fee at the start of each month. Full Members will have a grace period of one (1) month to pay their fee before their membership is revoked unless otherwise instructed by the Board of Directors.     

# Section 1.2: Supporting Membership

# Supporting Members privileges and fees vary and are to be determined by the Board of Directors and Full Members during a meeting. Supporting Members privileges and fees must apply for a predetermined period of time. 

# Supporting Members must pay their Supporting Membership Fee at the start of each month. Supporting Members will have a grace period of one (1) month to pay their fee before their membership is revoked unless otherwise instructed by the Board of Directors.

# Supporting Members may appeal to have their privileges and fees altered at any time such that they do not exceed two (2) appeals a month.

# Section 1.3: Co-operatives

# Co-operatives are inducted for a predetermined amount of time to work (non-exclusively) on predetermined projects by a two-thirds (2/3rds) vote of all Full Members. 

# Co-operatives have the following privileges:
# 24-hour access to the space
# Storage space

# Section 2: Membership Termination

# Membership may be terminated if three-fourths (3/4) of all members Vote for termination at which time you may appeal one (1) time to the Board of Directors.

# Article III: Voting, Polling, and Quorum 

# Section 1: Voting

# Any Full Member may request that an issue be put to a Vote at any time. Voting must be done using the Hackerspace Management System (HMS), during a meeting, or using Google Docs where the Vote must receive 50% + 1 of a Quorum’s approval. Without Quorum, the Vote does not pass.

# When an issue is brought to a vote outside of a meeting, it will last for forty-eight (48) hours from the time the email alerting all members was sent.


# Section 2: Polling

# Polling is required for any issue which dramatically modifies the space. This includes but is not limited to:
# Installing a system 
# Occupying unused space for a project
# Organizing an event

# Approval may be gained verbally (calling or asking in person) or electronically (email or text).

# Any member may conduct a poll by asking Full Members for Approval. If the member conducting the Poll receives Approval by three (3) Full Members, the poll has passed. 

# Members are asked to use their best judgement when Polling. Polls may be overturned by a Vote.

# Section 3: Quorum

# Quorum includes 50% + 1 of members. If an Issue is put to vote and less than 50% + 1 of members vote, it has failed to meet Quorum and does not pass.

# Article IV: Board of Directors

# Section 1: Qualification, Terms, and Compensation

# Each year has three (3) terms. The Fall Term start the first day of the Fall semester and runs to the first day of Spring semester. The Second Term starts the first day of Spring semester and runs until the start of Summer break. The Third Term starts the first day of Summer break and ends on the first day of classes. 

# All full members qualify to be on the Board of Directors. The Board of Directors will receive no compensation or benefits and hold the same status as a Full Member.

# Section 2: Board Structure

# Section 2.1: President

# ...

# Section 2.2: Vice-President

# ...

# Section 2.3: Treasurer

# ...

# Section 2.4: Student Liaison

# ...

# Section 2.5: Community Liaison

# ...

# Section 2.6: Webmaster

# ...

# Section 3: Officer Duties

# Section 4: Elections

# Elections will be held during a Term Meeting once each Term. Elections will be a Vote.

# Section 5: Impeachment

# Any Board Member may be impeached by a Vote in which three-quarters (3/4ths) of Full Members Approve.

# Article V: Committees 

# It is the responsibility of the Board of Directors to oversee the formation of committees as they see fit. 

# Article VI: Meetings

# Section 1: Regular Meetings

# Regular meetings shall be held Wednesday nights at 18:00 EST. The meeting shall be held at the registered address (Frasier Street) or at a location determined by the board of directors.

# Section 2: Term Meetings

# The purpose of Term Meetings is to vote on a new Board of Directors for the following term as well as any business that requires Quorum. 

# Term meetings shall be held once each term during the last month of the term on a date to be determined after the start of each term. Term meetings dates must be voted on such that the majority of members can attend. 

# Article VII: Project Fund

# Section 1: Purpose

# The Purpose of the project fund is to fund larger and more expensive projects. The project can be used to fund (non-exclusively): 
# Full Member projects
# Space upgrades
# Space related project
# Co-operative projects
# Research initiatives

# Section 2: Sources of Funds

# The Project Fund shall accept donations from members as well as except a fraction of the monthly membership fees.

# Section 3: Allocation of Funds

# At any time, members may appeal to Full Members and the Board of Directors for funds from the Project Fund provided that they present a detailed plan of what the funds will be used for.

# Article IIX: Dissolution

# If [Placeholder Name] is forced to dissolve due to unfortunate circumstances, court order, or planned dissolution, the remaining assets and funds of [Placeholder Name] will be dispersed to a 501(c3) organization with similar purpose as determined by the board of directors.

# Article IX: Definitions

# Approval voting: Approval voting is a single-winner voting system. Each voter may vote for (or 'approve' of) as many of the candidates as the voter wishes. The winner is the candidate receiving the most votes. Each voter may vote for any combination of candidates and may give each candidate at most one vote.

# Article X: Amendments

# I looked over a few other hackerspace by laws and drafted this up. 

# Look it over and make changes as you see fit. I think that it be best if we all worked on writing this. 

# If there are whole sections that you don't like, DO NOT DELETE THEM. Just make a note next to it and whoever wrote that section can take that into consideration. 

# We should all be at least 70% satisfied with these by laws.

# Please, do not point out flaws in the by laws unless you have taking the time to write a solid alternative solution that you've already added to the by laws and can reference when you point out the flaw.


# Signature of Approval - Add your name below after you are okay with the above by laws (or just don’t care)

# Mike Ghen
