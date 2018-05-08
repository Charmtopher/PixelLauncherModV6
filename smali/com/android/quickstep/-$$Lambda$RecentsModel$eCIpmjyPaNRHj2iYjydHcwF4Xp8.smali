.class public final synthetic Lcom/android/quickstep/-$$Lambda$RecentsModel$eCIpmjyPaNRHj2iYjydHcwF4Xp8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/quickstep/RecentsModel;

.field private final synthetic f$1:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

.field private final synthetic f$2:I

.field private final synthetic f$3:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsModel;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;ILjava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/-$$Lambda$RecentsModel$eCIpmjyPaNRHj2iYjydHcwF4Xp8;->f$0:Lcom/android/quickstep/RecentsModel;

    iput-object p2, p0, Lcom/android/quickstep/-$$Lambda$RecentsModel$eCIpmjyPaNRHj2iYjydHcwF4Xp8;->f$1:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    iput p3, p0, Lcom/android/quickstep/-$$Lambda$RecentsModel$eCIpmjyPaNRHj2iYjydHcwF4Xp8;->f$2:I

    iput-object p4, p0, Lcom/android/quickstep/-$$Lambda$RecentsModel$eCIpmjyPaNRHj2iYjydHcwF4Xp8;->f$3:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/-$$Lambda$RecentsModel$eCIpmjyPaNRHj2iYjydHcwF4Xp8;->f$0:Lcom/android/quickstep/RecentsModel;

    iget-object v1, p0, Lcom/android/quickstep/-$$Lambda$RecentsModel$eCIpmjyPaNRHj2iYjydHcwF4Xp8;->f$1:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    iget v2, p0, Lcom/android/quickstep/-$$Lambda$RecentsModel$eCIpmjyPaNRHj2iYjydHcwF4Xp8;->f$2:I

    iget-object v3, p0, Lcom/android/quickstep/-$$Lambda$RecentsModel$eCIpmjyPaNRHj2iYjydHcwF4Xp8;->f$3:Ljava/util/function/Consumer;

    invoke-static {v0, v1, v2, v3}, Lcom/android/quickstep/RecentsModel;->lambda$loadTasks$2(Lcom/android/quickstep/RecentsModel;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;ILjava/util/function/Consumer;)V

    return-void
.end method
