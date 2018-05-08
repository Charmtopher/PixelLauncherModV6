.class public final synthetic Lcom/android/launcher3/-$$Lambda$Workspace$DeferredWidgetRefresh$QJ_ezjGeqdfTWxjJynsqyQJjdQQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/launcher3/Workspace$ItemOperator;


# instance fields
.field private final synthetic f$0:Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;

.field private final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/-$$Lambda$Workspace$DeferredWidgetRefresh$QJ_ezjGeqdfTWxjJynsqyQJjdQQ;->f$0:Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;

    iput-object p2, p0, Lcom/android/launcher3/-$$Lambda$Workspace$DeferredWidgetRefresh$QJ_ezjGeqdfTWxjJynsqyQJjdQQ;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/-$$Lambda$Workspace$DeferredWidgetRefresh$QJ_ezjGeqdfTWxjJynsqyQJjdQQ;->f$0:Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;

    iget-object v1, p0, Lcom/android/launcher3/-$$Lambda$Workspace$DeferredWidgetRefresh$QJ_ezjGeqdfTWxjJynsqyQJjdQQ;->f$1:Ljava/util/ArrayList;

    invoke-static {v0, v1, p1, p2}, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->lambda$run$0(Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;Ljava/util/ArrayList;Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
