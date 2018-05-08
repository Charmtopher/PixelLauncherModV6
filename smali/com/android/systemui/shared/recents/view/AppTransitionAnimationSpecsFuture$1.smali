.class Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture$1;->this$0:Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture$1;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture$1;->this$0:Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;->composeSpecs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
