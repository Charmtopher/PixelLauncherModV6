.class Lcom/android/quickstep/OverviewCommandHelper$ShowRecentsCommand;
.super Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/OverviewCommandHelper;


# direct methods
.method private constructor <init>(Lcom/android/quickstep/OverviewCommandHelper;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/android/quickstep/OverviewCommandHelper$ShowRecentsCommand;->this$0:Lcom/android/quickstep/OverviewCommandHelper;

    invoke-direct {p0, p1}, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;-><init>(Lcom/android/quickstep/OverviewCommandHelper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quickstep/OverviewCommandHelper;Lcom/android/quickstep/OverviewCommandHelper$1;)V
    .locals 0

    .line 192
    invoke-direct {p0, p1}, Lcom/android/quickstep/OverviewCommandHelper$ShowRecentsCommand;-><init>(Lcom/android/quickstep/OverviewCommandHelper;)V

    return-void
.end method


# virtual methods
.method protected handleCommand(J)Z
    .locals 0

    .line 196
    iget-object p1, p0, Lcom/android/quickstep/OverviewCommandHelper$ShowRecentsCommand;->mHelper:Lcom/android/quickstep/ActivityControlHelper;

    invoke-interface {p1}, Lcom/android/quickstep/ActivityControlHelper;->getVisibleRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
