.class public final synthetic Lcom/android/quickstep/-$$Lambda$RecentsModel$rZAN1-eRHSYycmOWL-UzK9dzJ1Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/util/function/Consumer;

.field private final synthetic f$1:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/-$$Lambda$RecentsModel$rZAN1-eRHSYycmOWL-UzK9dzJ1Q;->f$0:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/quickstep/-$$Lambda$RecentsModel$rZAN1-eRHSYycmOWL-UzK9dzJ1Q;->f$1:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/-$$Lambda$RecentsModel$rZAN1-eRHSYycmOWL-UzK9dzJ1Q;->f$0:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/quickstep/-$$Lambda$RecentsModel$rZAN1-eRHSYycmOWL-UzK9dzJ1Q;->f$1:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    invoke-static {v0, v1}, Lcom/android/quickstep/RecentsModel;->lambda$loadTasks$1(Ljava/util/function/Consumer;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;)V

    return-void
.end method
