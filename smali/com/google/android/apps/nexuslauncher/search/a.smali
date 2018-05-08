.class Lcom/google/android/apps/nexuslauncher/search/a;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/logging/UserEventDispatcher$LogContainerProvider;


# instance fields
.field private final Es:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 120
    iput p2, p0, Lcom/google/android/apps/nexuslauncher/search/a;->Es:I

    .line 121
    return-void
.end method


# virtual methods
.method public final fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 0

    .line 126
    iget p1, p0, Lcom/google/android/apps/nexuslauncher/search/a;->Es:I

    if-ltz p1, :cond_0

    .line 127
    const/4 p1, 0x7

    iput p1, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 128
    iget p1, p0, Lcom/google/android/apps/nexuslauncher/search/a;->Es:I

    iput p1, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->predictedRank:I

    return-void

    .line 130
    :cond_0
    const/16 p1, 0x8

    iput p1, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 132
    return-void
.end method
