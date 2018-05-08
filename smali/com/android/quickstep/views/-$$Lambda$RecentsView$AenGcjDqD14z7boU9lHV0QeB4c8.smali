.class public final synthetic Lcom/android/quickstep/views/-$$Lambda$RecentsView$AenGcjDqD14z7boU9lHV0QeB4c8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/quickstep/views/RecentsView;

.field private final synthetic f$1:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/-$$Lambda$RecentsView$AenGcjDqD14z7boU9lHV0QeB4c8;->f$0:Lcom/android/quickstep/views/RecentsView;

    iput-object p2, p0, Lcom/android/quickstep/views/-$$Lambda$RecentsView$AenGcjDqD14z7boU9lHV0QeB4c8;->f$1:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/views/-$$Lambda$RecentsView$AenGcjDqD14z7boU9lHV0QeB4c8;->f$0:Lcom/android/quickstep/views/RecentsView;

    iget-object v1, p0, Lcom/android/quickstep/views/-$$Lambda$RecentsView$AenGcjDqD14z7boU9lHV0QeB4c8;->f$1:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    check-cast p1, Lcom/android/launcher3/util/PendingAnimation$OnEndListener;

    invoke-static {v0, v1, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$applyLoadPlan$1(Lcom/android/quickstep/views/RecentsView;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;Lcom/android/launcher3/util/PendingAnimation$OnEndListener;)V

    return-void
.end method
