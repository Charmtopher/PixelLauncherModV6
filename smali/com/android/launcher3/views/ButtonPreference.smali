.class public Lcom/android/launcher3/views/ButtonPreference;
.super Landroid/preference/Preference;
.source "SourceFile"


# instance fields
.field private mWidgetFrameVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/views/ButtonPreference;->mWidgetFrameVisible:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/views/ButtonPreference;->mWidgetFrameVisible:Z

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/views/ButtonPreference;->mWidgetFrameVisible:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/views/ButtonPreference;->mWidgetFrameVisible:Z

    .line 35
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 60
    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 61
    if-eqz p1, :cond_1

    .line 62
    iget-boolean v0, p0, Lcom/android/launcher3/views/ButtonPreference;->mWidgetFrameVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 64
    :cond_1
    return-void
.end method

.method public final setWidgetFrameVisible(Z)V
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/android/launcher3/views/ButtonPreference;->mWidgetFrameVisible:Z

    if-eq v0, p1, :cond_0

    .line 51
    iput-boolean p1, p0, Lcom/android/launcher3/views/ButtonPreference;->mWidgetFrameVisible:Z

    .line 52
    invoke-virtual {p0}, Lcom/android/launcher3/views/ButtonPreference;->notifyChanged()V

    .line 54
    :cond_0
    return-void
.end method
