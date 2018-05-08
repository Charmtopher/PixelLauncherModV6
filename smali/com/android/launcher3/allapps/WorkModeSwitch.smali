.class public Lcom/android/launcher3/allapps/WorkModeSwitch;
.super Landroid/widget/Switch;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 0

    .line 46
    return-void
.end method

.method final setCheckedInternal(Z)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 55
    return-void
.end method

.method public toggle()V
    .locals 2

    .line 50
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->isChecked()Z

    move-result v0

    new-instance v1, Lcom/android/launcher3/allapps/WorkModeSwitch$1;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch$1;-><init>(Lcom/android/launcher3/allapps/WorkModeSwitch;Z)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 51
    return-void
.end method
