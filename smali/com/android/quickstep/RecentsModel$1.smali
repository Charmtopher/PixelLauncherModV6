.class Lcom/android/quickstep/RecentsModel$1;
.super Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/RecentsModel;


# direct methods
.method constructor <init>(Lcom/android/quickstep/RecentsModel;Landroid/content/Context;III)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/quickstep/RecentsModel$1;->this$0:Lcom/android/quickstep/RecentsModel;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;-><init>(Landroid/content/Context;III)V

    return-void
.end method


# virtual methods
.method protected createNewIconLoader(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;Landroid/util/LruCache;)Lcom/android/systemui/shared/recents/model/IconLoader;
    .locals 1

    .line 108
    new-instance v0, Lcom/android/quickstep/NormalizedIconLoader;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/quickstep/NormalizedIconLoader;-><init>(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;Landroid/util/LruCache;)V

    return-object v0
.end method
