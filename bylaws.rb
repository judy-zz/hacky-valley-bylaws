
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
        if user.application_complete? && user.membership_voted_on?
          user.full_membership = true
        end
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

    def application_complete?
      # TODO: Make sure all required fields are filled in.
      false
    end

    def membership_voted_on?
      # TODO: Find motion, "#{user.name} requests full membership privileges."
      # motion.passed?
    end
  end
end

