.class public final synthetic Lcom/android/launcher3/model/-$$Lambda$BaseModelUpdateTask$wC_xrSA2wDogNJ7aI_9kn7ZSyLg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/launcher3/model/BaseModelUpdateTask;

.field private final synthetic f$1:Lcom/android/launcher3/LauncherModel$Callbacks;

.field private final synthetic f$2:Lcom/android/launcher3/LauncherModel$CallbackTask;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/BaseModelUpdateTask;Lcom/android/launcher3/LauncherModel$Callbacks;Lcom/android/launcher3/LauncherModel$CallbackTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/-$$Lambda$BaseModelUpdateTask$wC_xrSA2wDogNJ7aI_9kn7ZSyLg;->f$0:Lcom/android/launcher3/model/BaseModelUpdateTask;

    iput-object p2, p0, Lcom/android/launcher3/model/-$$Lambda$BaseModelUpdateTask$wC_xrSA2wDogNJ7aI_9kn7ZSyLg;->f$1:Lcom/android/launcher3/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/android/launcher3/model/-$$Lambda$BaseModelUpdateTask$wC_xrSA2wDogNJ7aI_9kn7ZSyLg;->f$2:Lcom/android/launcher3/LauncherModel$CallbackTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/model/-$$Lambda$BaseModelUpdateTask$wC_xrSA2wDogNJ7aI_9kn7ZSyLg;->f$0:Lcom/android/launcher3/model/BaseModelUpdateTask;

    iget-object v1, p0, Lcom/android/launcher3/model/-$$Lambda$BaseModelUpdateTask$wC_xrSA2wDogNJ7aI_9kn7ZSyLg;->f$1:Lcom/android/launcher3/LauncherModel$Callbacks;

    iget-object v2, p0, Lcom/android/launcher3/model/-$$Lambda$BaseModelUpdateTask$wC_xrSA2wDogNJ7aI_9kn7ZSyLg;->f$2:Lcom/android/launcher3/LauncherModel$CallbackTask;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/model/BaseModelUpdateTask;->lambda$scheduleCallbackTask$0(Lcom/android/launcher3/model/BaseModelUpdateTask;Lcom/android/launcher3/LauncherModel$Callbacks;Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    return-void
.end method
