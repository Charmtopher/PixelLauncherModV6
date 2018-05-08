.class public abstract Lcom/android/systemui/shared/system/ActivityOptionsCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeRemoteAnimation(Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;)Landroid/app/ActivityOptions;
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;->getWrapped()Landroid/view/RemoteAnimationAdapter;

    move-result-object p0

    invoke-static {p0}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public static makeSplitScreenOptions(Z)Landroid/app/ActivityOptions;
    .locals 2

    .line 34
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 35
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 36
    if-eqz p0, :cond_0

    .line 37
    const/4 p0, 0x0

    goto :goto_0

    .line 38
    :cond_0
    const/4 p0, 0x1

    .line 36
    :goto_0
    invoke-virtual {v0, p0}, Landroid/app/ActivityOptions;->setSplitScreenCreateMode(I)V

    .line 39
    return-object v0
.end method
