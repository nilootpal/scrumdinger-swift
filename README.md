# Scrumdinger-Swift

## First part(https://developer.apple.com/tutorials/app-dev-training/using-stacks-to-arrange-views)

First replace the existing body with Progress View. 

#Stacks

Firstly, let us use STACKS to create a view of the main page of Scrumdinger

Stacks : 
1. HStack
2. VStack
3. ZStack

We can add alignment to the stack.

To refactor a piece of Code we use Control+Click.

#Images

The image uses one of the included SF Symbols. We can get more system symbols from SF Symbol App


To customize a SwiftUI view, you call methods known as modifiers. Each modifier returns a new view. You can use multiple modifiers on a single view. To chain modifiers, stack them vertically.

#Accessibility

SwiftUI has built-in accessibility, so you get accessibility support with little additional work. But sometimes, you might want to supplement the inferred data to enhance the accessibility experience for your users.

## Second part(https://developer.apple.com/tutorials/app-dev-training/creating-a-card-view)

We use enumeration of type String which converts each case to a string.

Named colors in the asset catalog must match their references in code, so make sure to spell each case correctly.

We create a DailyScrum structure

We also create a customised Label Style to play with the given views

## Third part(https://developer.apple.com/tutorials/app-dev-training/displaying-data-in-a-list)

We use a List Initializer to display the list of meetings(https://developer.apple.com/documentation/swiftui/list)

Identifiable(https://developer.apple.com/documentation/Swift/Identifiable)

## Fourth part(https://developer.apple.com/tutorials/app-dev-training/creating-a-navigation-hierarchy)

From the NavigationStack container view, you can traverse a stack of views in a hierarchy. The list of scrums acts as the root view and is always present. Selecting a navigation link from the list adds a scrum detail view to the stack so that it covers the list. Navigating back removes the detail view and reveals the list again. The system disables backward navigation controls when the list of scrums is the only view in the stack.

Here our target is to create a Navigation Heirarchy through which the user could navigate to various other DetailView as well as MeetingView

# Managing data flow between views(https://developer.apple.com/tutorials/app-dev-training/managing-data-flow-between-views)

Maintaining multiple copies of information can introduce inconsistencies that lead to bugs in your app. To avoid data inconsistency bugs, use a single source of truth for each data element in your app. Store the element in one location—the source of truth—and any number of views can access that same piece of data.

When you declare a property as a @State, you create a source of truth within your view. The system identifies all elements of a view that depend on the value of a @State property.

A property that you wrap with @Binding shares read and write access with an existing source of truth, like a @State property. A @Binding doesn’t store the data directly. Instead, it creates a two-way connection between an existing source of truth and a view that displays and updates that data. This connection ensures that multiple views associated with a piece of data are in sync.

## Sixth part(https://developer.apple.com/tutorials/app-dev-training/creating-the-edit-view)

## Passing Data as Binding(https://developer.apple.com/tutorials/app-dev-training/passing-data-with-bindings)

In this part we will learn about the data sharing using binders and state properties. We converted various various variables to bindings and state type in order to achieve data sharing accross the navigation hierarchy
